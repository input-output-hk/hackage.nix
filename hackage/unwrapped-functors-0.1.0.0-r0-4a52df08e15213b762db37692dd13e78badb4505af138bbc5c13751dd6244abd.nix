{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "unwrapped-functors";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Vladislav Zavialov <vlad.z.4096@gmail.com>";
      author = "Vladislav Zavialov";
      homepage = "";
      url = "";
      synopsis = "Unwrapping sums/products lifted to functors";
      description = "";
      buildType = "Simple";
    };
    components = {
      "unwrapped-functors" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }