#!/bin/sh
cat << 'EOF' > tmp.tex
\documentclass[a4,11pt]{article}
\usepackage[top=15truemm,bottom=15truemm,left=15truemm,right=15truemm]{geometry}
\pagestyle{empty}
\begin{document}
EOF

while IFS=, read user_name user_id user_password;do
	#echo "user_name: $user_name, user_id: $user_id, user_password: $user_password"
	sudo pw useradd -n "$user_id" -c "$user_name" -m
	sudo echo "$user_password" | sudo pw usermod "$user_id" -h 0
cat << EOF >> tmp.tex
\rightline{\today}
\begin{center}
\textbf{Account Information}
\end{center}
\begin{center}
\begin{tabular}{|c|c|c|c|}
\hline
\textbf{Full Name} & \textbf{User Name} & \textbf{Initial Password} & \textbf{Memorandum} \\\\
\hline
\texttt{$user_name} & \texttt{$user_id} & \texttt{$user_password} & \\\\
\hline
\end{tabular}
\end{center}
\clearpage
EOF
done

echo '\end{document}' >> tmp.tex
latex tmp.tex > /dev/null 2>&1
dvipdfmx tmp.dvi > /dev/null 2>&1
cat tmp.pdf 2> /dev/null
rm tmp.tex tmp.aux tmp.log tmp.dvi tmp.pdf > /dev/null 2>&1
