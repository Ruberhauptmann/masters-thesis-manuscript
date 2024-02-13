@default_files = ('main.tex');

$aux_dir = 'out';
$do_cd = 1;

$xelatex=q/xelatex -synctex=1 %O %S/;
$pdf_mode = 1;
$dvi_mode = $postscript_mode = 0;