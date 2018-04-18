{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "webidl";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Dmitry Golubovsky <golubovsky@gmail.com>";
        author = "Dmitry Golubovsky";
        homepage = "";
        url = "";
        synopsis = "Parser and Pretty Printer for the Web IDL Language";
        description = "Web IDL is a dialect of OMG IDL used by the Web App group to specify\ncomponent interfaces of Web applications. See also:\n\n<http://www.w3.org/TR/WebIDL/> - working draft of the specification\n\n<http://www.w3.org/2008/webapps/wiki/Main_Page> - Web App group wiki\n\n<http://code.google.com/p/es-operating-system/> - an experimental\nGoogle - Nintendo project from which the lexer/parser files for Web IDL\nare borrowed.\n\nThe package provides a Web IDL parsing\\/pretty-printing library, and\nthe two executable programs:\n\n* @idltestlex@: a debugging program which reads a Web IDL source\nfrom its standard input, and prints the list of tokens in raw format,\nas returned from the lexer.\n\n* @idlppr@: a debugging program which reads a Web IDL source\nfrom its standard input, parses, and pretty-prints it on its\nstandard output. Non-JavaDoc comments, and preprocessor directives\nthat the input might contain will not appear in the output.\nThe program may be used to test the parser and pretty printer\nin the way that when @idlppr@ reads a pretty-printed Web IDL source,\nthe output should be identical to the input.\n\nChanges from 1.1: the parser has been fixed to recognize outermost-declared\nscoped names (those starting with \"::\"), and allow for use of @DOMString@\nin typedefs and valuetypes, as the Web IDL working draft prescribes.";
        buildType = "Custom";
      };
      components = {
        webidl = {
          depends  = [
            hsPkgs.base
            hsPkgs.utf8-env
            hsPkgs.utf8-string
            hsPkgs.bytestring
            hsPkgs.LEXER
            hsPkgs.HSFFIG
            hsPkgs.parsec
            hsPkgs.pretty
          ];
        };
        exes = {
          idlppr = {
            depends  = [
              hsPkgs.base
              hsPkgs.utf8-env
              hsPkgs.utf8-string
              hsPkgs.bytestring
              hsPkgs.LEXER
              hsPkgs.HSFFIG
              hsPkgs.parsec
              hsPkgs.pretty
            ];
          };
          idltestlex = {
            depends  = [
              hsPkgs.base
              hsPkgs.utf8-env
              hsPkgs.utf8-string
              hsPkgs.bytestring
              hsPkgs.LEXER
              hsPkgs.HSFFIG
              hsPkgs.parsec
              hsPkgs.pretty
            ];
          };
        };
      };
    }