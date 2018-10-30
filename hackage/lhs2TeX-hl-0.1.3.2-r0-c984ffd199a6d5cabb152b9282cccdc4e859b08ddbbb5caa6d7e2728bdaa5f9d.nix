{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "lhs2TeX-hl";
        version = "0.1.3.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Alessandro Vermeulen <me@alessandrovermeulen.me>";
      author = "Alessandro Vermeulen <me@alessandrovermeulen.me>";
      homepage = "http://spockz.github.com/lhs2texhl/";
      url = "";
      synopsis = "Literate highlighter preprocessor for lhs2tex";
      description = "A helper executable for highlighting code with lhs2tex. Pass\nan Haskell file to lhs2TeX-hl and it will generate a file\nwith formatting directives to be used with lhs2TeX for you.\nFor more information, please visit the repository, or look\nat the release blog post:\nhttp://alessandrovermeulen.me/projects/lhs2texhl/";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lhs2TeX-hl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.syb)
            (hsPkgs.cmdargs)
          ];
        };
      };
    };
  }