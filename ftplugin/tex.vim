setl tabstop=8
setl softtabstop=2
setl shiftwidth=2
setl smarttab
setl expandtab
setl autoindent
setl textwidth=80
setl colorcolumn=80

setl foldmethod=indent
setl foldlevel=99

" --- Vim-LaTeX like Keymap {{{
" Copied from http://d.hatena.ne.jp/amone_misya_ap/20111121/1321864513
" Greek character keymap
inoremap ` <NOP>
inoremap `` `
inoremap `a \alpha
inoremap `b \beta
inoremap `c \chi
inoremap `d \delta
inoremap `e \varepsilon
inoremap `f \varphi
inoremap `g \gamma
inoremap `h \eta
inoremap `i \iota
inoremap `j
inoremap `k \kappa
inoremap `l \lambda
inoremap `m \mu
inoremap `n \nu
"inoremap `o
inoremap `p \pi
inoremap `q \theta
inoremap `r \rho
inoremap `s \sigma
inoremap `t \tau
inoremap `u \upsilon
inoremap `v \varsigma
inoremap `w \omega
inoremap `x \xi
inoremap `y \psi
inoremap `z \zeta
 
inoremap `D \Delta
inoremap `D \epsilon
inoremap `F \Phi
inoremap `G \Gamma
inoremap `L \Lambda
inoremap `P \Pi
inoremap `Q \Theta
inoremap `S \Sigma
inoremap `U \Upsilon
inoremap `V \Psi
inoremap `W \Omega
inoremap `X \Xi
inoremap `Z \mathrm{Z}

" Auc-Tex Keymap
 inoremap `( \subse
 inoremap `) \supse
inoremap `( \left(  \right)${0}<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `[ \left[  \right]${0}<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `{ \left\{  \right\}${0}<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `\| \Big\|  \Big\|${0}<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `^ \Hat{}${0}<LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `^ ^{}${0}<LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `$ $$${0}<LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `/ \frac{}{${2}}${0}<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `% \frac{}{${2}}${0}<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `& \wedge
inoremap `< \le
inoremap `> \ge
inoremap `= \equiv
inoremap `- \bigcap
inoremap `+ \bigcup
inoremap `* \times
inoremap `\ \setminus
inoremap `@ \circ
inoremap `, \nonumber
inoremap `_ \bar{}${0}<LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `_ _{}${0}<LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `; \dot{}${0}<LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `: \ddot{}${0}<LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `~ \tilde{}${0}<LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `2 \sqrt{}${0}<LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `6 \partial
inoremap `8 \infty
inoremap `O ^\circ
inoremap `M \sum_{}^{${2}}${0}<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `I \int_{}^{${2}} ${3} \,d${0}<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `l \ldot{}${0}<LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `c \ddot{}${0}<LEFT><LEFT><LEFT><LEFT><LEFT>
inoremap `, \nonumber
"}}}
