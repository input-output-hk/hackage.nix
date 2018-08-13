{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "skypelogexport";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jdevelop@gmail.com";
      author = "Eugene Dzhurinsky";
      homepage = "https://github.com/jdevelop/skypelogexport/wiki";
      url = "";
      synopsis = "Export Skype chat logs to text files";
      description = "The purpose of this software is to export logs of Skype into\ntext files.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "skypelogexport" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.regex-pcre)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
            (hsPkgs.datetime)
            (hsPkgs.IfElse)
            (hsPkgs.containers)
            (hsPkgs.utf8-string)
            (hsPkgs.attoparsec)
            (hsPkgs.ghc-binary)
          ];
        };
      };
    };
  }