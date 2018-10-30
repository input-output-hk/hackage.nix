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
        name = "yam-transaction-odbc";
        version = "0.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/yam/yam-transaction-odbc#readme";
      url = "";
      synopsis = "";
      description = "Transaction ODBC Plugin";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yam-app)
          (hsPkgs.containers)
          (hsPkgs.persistent-odbc)
        ];
      };
    };
  }