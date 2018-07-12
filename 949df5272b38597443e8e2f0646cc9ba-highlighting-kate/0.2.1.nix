{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      executable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "highlighting-kate";
          version = "0.2.1";
        };
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
        "highlighting-kate" = {
          depends  = [
            hsPkgs.parsec
            hsPkgs.pcre-light
            hsPkgs.xhtml
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.containers
            ]
            else [ hsPkgs.base ]);
        };
        exes = {
          "Highlight" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.xhtml
              hsPkgs.filepath
            ];
          };
        };
      };
    }