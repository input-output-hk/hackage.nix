{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "geoip2"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "palkovsky.ondrej@gmail.com";
      author = "Ondrej Palkovsky";
      homepage = "";
      url = "";
      synopsis = "Pure haskell interface to MaxMind GeoIP database";
      description = "GeoIP2 is a haskell binding to the MaxMind GeoIP2 database.\nIt parses the database according to the MaxMind DB\nspecification <http://maxmind.github.io/MaxMind-DB/>, version 2\nof the specification is supported. The free geolite2 database can\nbe downloaded at <http://dev.maxmind.com/geoip/geoip2/geolite2/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring-mmap" or (errorHandler.buildDepError "bytestring-mmap"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."reinterpret-cast" or (errorHandler.buildDepError "reinterpret-cast"))
        ];
        buildable = true;
      };
    };
  }