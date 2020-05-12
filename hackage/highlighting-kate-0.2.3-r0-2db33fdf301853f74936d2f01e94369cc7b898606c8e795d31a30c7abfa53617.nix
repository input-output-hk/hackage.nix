{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { splitbase = true; executable = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "highlighting-kate"; version = "0.2.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://johnmacfarlane.net/highlighting-kate";
      url = "";
      synopsis = "Syntax highlighting";
      description = "highlighting-kate is a syntax highlighting library\nwith support for over 50 languages. The syntax\nparsers are automatically generated from Kate\nsyntax descriptions (<http://kate-editor.org/>),\nso any syntax supported by Kate can be added.\nAn (optional) command-line program is provided, along\nwith a utility for generating new parsers from Kate\nXML syntax descriptions.\n\nCurrently the following languages are supported:\nAda, Asp, Awk, Bash, Bibtex, C, Cmake, Coldfusion,\nCommonlisp, Cpp, Css, D, Djangotemplate, Doxygen,\nDtd, Eiffel, Erlang, Fortran, Haskell, Html,\nJava, Javadoc, Javascript, Json, Latex, Lex,\nLiterateHaskell, Lua, Makefile, Matlab, Mediawiki,\nModula3, Nasm, Objectivec, Ocaml, Pascal, Perl,\nPhp, Postscript, Prolog, Python, Rhtml, Ruby,\nScala, Scheme, Sgml, Sql, SqlMysql, SqlPostgresql,\nTcl, Texinfo, Xml, Xslt, Yacc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      exes = {
        "Highlight" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.executable then true else false;
          };
        };
      };
    }