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
        name = "inj";
        version = "1.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Vladislav Zavialov <vlad.z.4096@gmail.com>";
      author = "Vladislav Zavialov";
      homepage = "";
      url = "";
      synopsis = "A class for injective (one-to-one) functions";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {};
    };
  }