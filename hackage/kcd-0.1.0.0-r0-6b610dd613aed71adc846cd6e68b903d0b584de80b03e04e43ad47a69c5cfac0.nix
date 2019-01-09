{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kcd"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "buesing.marcel@googlemail.com";
      author = "marcelbuesing";
      homepage = "https://github.com/marcelbuesing/kcd";
      url = "";
      synopsis = "Kayak .kcd parsing library.";
      description = "Parse Kayak .kcd files.\nKcd files list CAN messages details, their signal's and signal details,\ne.g. the signal offset in the CAN data frame or the signal type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.conduit-parse)
          (hsPkgs.exceptions)
          (hsPkgs.lens)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.kcd-parser)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }