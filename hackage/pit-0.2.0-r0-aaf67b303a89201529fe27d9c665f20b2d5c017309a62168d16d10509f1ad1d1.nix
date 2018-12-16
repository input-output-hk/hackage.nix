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
      specVersion = "1.10";
      identifier = {
        name = "pit";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Yuichiro Hanada <i@chir.jp>";
      author = "Yuichiro Hanada";
      homepage = "https://github.com/chiro/haskell-pit";
      url = "";
      synopsis = "Account management tool.";
      description = "This package provides the account management tool and the library for\naccount management.\n\nThis package is a porting of Pit (see <https://github.com/cho45/pit>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "pit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pit)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }