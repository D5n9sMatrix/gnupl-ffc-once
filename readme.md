# welcome gnupl-ffc-once
GNUPLOT(1)		    General Commands Manual		    GNUPLOT(1)

NAME
       gnuplot - an interactive	plotting program

SYNOPSIS
       gnuplot [X11 options] [options] [file ...]

DESCRIPTION
       Gnuplot is a command-driven interactive plotting	program.

       If file names are given on the command line, gnuplot loads and executes
       each file in the	order specified, and exits after the last file is pro-
       cessed.	 If  no	 files are given, gnuplot prompts for interactive com-
       mands.

       Here are	some of	its features:

       Plots any number	of functions, built up of C operators, C math  library
       functions, and some things C doesn't have like **, sgn(), etc.

       User-defined constants and functions.

       All  computations  performed in the complex domain.  Just the real part
       is plotted by default, but functions like imag()	and  abs()  and	 arg()
       are available to	override this.

       Many  presentation  styles for plotting user data from files, including
       surface-fitting,	error bars, boxplots, histograms, heat maps, and  sim-
       ple manipulation	of image data.	There is an on-line demo collection at
       http://gnuplot.info/demo

       Nonlinear least-squares fitting.

       2D and 3D plots with mouse-controlled zooming, rotation,	and hypertext.

       Shell escapes and command line substitution.

       Load and	save capability.

       Support for a huge variety of output devices and	file formats.

OPTIONS
       -p,  --persist lets plot	windows	survive	after main gnuplot program ex-
       its.

       -c scriptname ARG1 ARG2 ..., load script	using gnuplot's	"call"	mecha-
       nism and	pass it	the remainder of the command line as arguments

       -d,  --default  settings.   Do not read from gnuplotrc or ~/.gnuplot on
       entry.

       -e "command list" executes the requested	commands  before  loading  the
       next input file.

       -s,  --slow  wait  for  slow font initialization	rather than continuing
       with an error.

       -h, --help print	summary	of usage

       -V show current version

X11 OPTIONS
       For terminal type x11, gnuplot accepts the standard X  Toolkit  options
       and  resources such as geometry,	font, and background. See the X(1) man
       page for	a description of common	options.   For	additional  X  options
       specific	 to  gnuplot, type help	x11 on the gnuplot command line. These
       options have no effect on other terminal	types.

ENVIRONMENT
       A number	of shell environment  variables	 are  understood  by  gnuplot.
       None of these are required.

       GNUTERM
	      The  name	 of the	terminal type to be used by default.  This can
	      be overridden by the gnuplotrc or	.gnuplot start-up  files  and,
	      of course, by later explicit "set	terminal" commands.

       GNUHELP
	      The pathname of the HELP file (gnuplot.gih).

       HOME   The name of a directory to search	for a .gnuplot file.

       PAGER  An output	filter for help	messages.

       SHELL  The program used for the "shell" command.

       FIT_SCRIPT
	      Specifies	 a gnuplot command to be executed when a fit is	inter-
	      rupted---see "help fit".

       FIT_LOG
	      The name of the logfile maintained by fit.

       GNUPLOT_LIB
	      Additional search	directories for	data and  command  files.  The
	      variable	may  contain a single directory	name, or a list	of di-
	      rectories	separated by ':'. The contents of GNUPLOT_LIB are  ap-
	      pended to	the "loadpath" variable, but not saved with the	"save"
	      and "save	set" commands.

       GDFONTPATH
	      Several gnuplot terminal drivers access TrueType fonts  via  the
	      gd  library.  This variable gives	the font search	path for these
	      drivers.

       GNUPLOT_DEFAULT_GDFONT
	      The default font for the terminal	drivers	that  access  TrueType
	      fonts via	the gd library.

       GNUPLOT_FONTPATH
	      The font search path used	by the postscript terminal. The	format
	      is the same as for GNUPLOT_LIB. The contents of GNUPLOT_FONTPATH
	      are  appended to the "fontpath" variable,	but not	saved with the
	      "save" and "save set" commands.

       GNUPLOT_PS_DIR
	      Used by the postscript driver to locate external prologue	files.
	      Depending	 on  the  build	 process,  gnuplot  contains  either a
	      builtin copy of those files or simply a default hardcoded	 path.
	      Use  this	 variable  to test the postscript terminal with	custom
	      prologue files. See "help	postscript prologue".

FILES
       gnuplotrc
	      When gnuplot is run, it first looks for a	 system-wide  initial-
	      ization  file  named  gnuplotrc.	 The standard location of this
	      file expected by the program is reported by the "show  loadpath"
	      command.

       .gnuplot
	      After  loading the system-wide initialization file, if any, Gnu-
	      plot looks for a private initialization file in the HOME	direc-
	      tory.   It may contain any legal gnuplot commands, but typically
	      they are limited to setting  the	preferred  terminal  and  line
	      types and	defining frequently-used functions or variables.

       fit.log
	      The default name of the logfile output by	the "fit" command.

AUTHORS
       Original	authors: Thomas	Williams and Colin Kelley.  Starting with gnu-
       plot version 3.8, the project source  is	 cooperatively	maintained  on
       SourceForge by a	large number of	contributors.

BUGS
       Please report bugs using	the project bug	tracker	on SourceForge.

SEE ALSO
       See the printed manual or the on-line help for details on specific com-
       mands.  Project web site	at http://gnuplot.info

4th Berkeley Distribution	 15 March 2019			    GNUPLOT(1)
