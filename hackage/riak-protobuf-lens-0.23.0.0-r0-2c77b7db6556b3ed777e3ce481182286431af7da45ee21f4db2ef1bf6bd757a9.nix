{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "riak-protobuf-lens"; version = "0.23.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Tim McGilchrist <timmcgil@gmail.com>, Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "";
      homepage = "https://github.com/riak-haskell-client/riak-haskell-client#readme";
      url = "";
      synopsis = "Lenses for riak-protobuf";
      description = "A set of Haskell lenses for interacting with the protocol buffer\nAPI of the Riak decentralized data store.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."riak-protobuf" or ((hsPkgs.pkgs-errors).buildDepError "riak-protobuf"))
          ];
        buildable = true;
        };
      exes = {
        "generate" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
            (hsPkgs."riak-protobuf" or ((hsPkgs.pkgs-errors).buildDepError "riak-protobuf"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }