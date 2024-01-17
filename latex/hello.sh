#!/bin/sh
cat <<'EOF' > tmp.tex
\documentclass{article}
\begin{document}
Hello, \LaTeX!
\end{document}
EOF
latex tmp.tex > /dev/null 2>&1
dvipdfmx tmp.dvi > /dev/null 2>&1
cat tmp.pdf 2> /dev/null
rm tmp.tex tmp.aux tmp.log tmp.dvi tmp.pdf > /dev/null 2>&1
