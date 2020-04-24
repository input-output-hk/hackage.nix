{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "co-log-concurrent"; version = "0.4.0.0"; };
      license = "MPL-2.0";
      copyright = "2018-2020 Kowainik, 2020 Alexander Vershilov";
      maintainer = "alexander.vershilov@gmail.com";
      author = "Alexander Vershilov";
      homepage = "https://github.com/qnikst/co-log-concurrent/";
      url = "";
      synopsis = "Asynchronous backend for co-log library";
      description = "Buiding block for writing asynchronous logger pipelines.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."co-log-core" or ((hsPkgs.pkgs-errors).buildDepError "co-log-core"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }