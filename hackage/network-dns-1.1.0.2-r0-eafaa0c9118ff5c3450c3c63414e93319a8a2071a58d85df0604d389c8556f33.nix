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
      specVersion = "2.0";
      identifier = { name = "network-dns"; version = "1.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2013, 2017 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/network-dns";
      url = "";
      synopsis = "Domain Name System data structures";
      description = "This package provides Domain Name System data structures and\n(de)serialization routines.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."type-hint" or (errorHandler.buildDepError "type-hint"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-serializer" or (errorHandler.buildDepError "data-serializer"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text-latin1" or (errorHandler.buildDepError "text-latin1"))
          (hsPkgs."text-printer" or (errorHandler.buildDepError "text-printer"))
          (hsPkgs."data-textual" or (errorHandler.buildDepError "data-textual"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."network-ip" or (errorHandler.buildDepError "network-ip"))
        ];
        buildable = true;
      };
      exes = {
        "hs-network-dns-examples-resolver" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-textual" or (errorHandler.buildDepError "data-textual"))
            (hsPkgs."data-serializer" or (errorHandler.buildDepError "data-serializer"))
            (hsPkgs."network-ip" or (errorHandler.buildDepError "network-ip"))
            (hsPkgs."network-dns" or (errorHandler.buildDepError "network-dns"))
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."posix-socket" or (errorHandler.buildDepError "posix-socket"));
          buildable = true;
        };
      };
    };
  }