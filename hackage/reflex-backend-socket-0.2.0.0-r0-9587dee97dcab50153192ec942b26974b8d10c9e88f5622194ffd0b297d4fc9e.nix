{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reflex-backend-socket"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2019, Commonwealth Scientific and Industrial Research Organisation";
      maintainer = "dave.laing.80@gmail.com, jack.kelly@data61.csiro.au";
      author = "Dave Laing";
      homepage = "";
      url = "";
      synopsis = "Reflex bindings for TCP sockets";
      description = "<<https://raw.githubusercontent.com/qfpl/assets/master/data61-transparent-bg.png>>\n\nreflex-backend-socket provides functions to handle sockets using\nReflex @Event@s. Sending\\/receiving\\/waiting\\/accepting are all\nperformed on background threads.\n\nThe most important function in this library is\n@Reflex.Backend.Socket.socket@, which wraps a @Socket@ to process\n@Event t ByteString@s.\n\nThat @Socket@ can come from:\n\n1. @Reflex.Backend.Socket.Accept.accept@, if you're making a server;\n2. @Reflex.Backend.Socket.Connect.connect@, if you're making a client; or\n3. Your favourite networking library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
          (hsPkgs."semialign" or ((hsPkgs.pkgs-errors).buildDepError "semialign"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."these" or ((hsPkgs.pkgs-errors).buildDepError "these"))
          ];
        buildable = true;
        };
      exes = {
        "example-server" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
            (hsPkgs."reflex-backend-socket" or ((hsPkgs.pkgs-errors).buildDepError "reflex-backend-socket"))
            (hsPkgs."reflex-basic-host" or ((hsPkgs.pkgs-errors).buildDepError "reflex-basic-host"))
            ];
          buildable = true;
          };
        "example-client" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
            (hsPkgs."reflex-backend-socket" or ((hsPkgs.pkgs-errors).buildDepError "reflex-backend-socket"))
            (hsPkgs."reflex-basic-host" or ((hsPkgs.pkgs-errors).buildDepError "reflex-basic-host"))
            ];
          buildable = true;
          };
        "example-others" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
            (hsPkgs."reflex-backend-socket" or ((hsPkgs.pkgs-errors).buildDepError "reflex-backend-socket"))
            (hsPkgs."reflex-basic-host" or ((hsPkgs.pkgs-errors).buildDepError "reflex-basic-host"))
            (hsPkgs."witherable" or ((hsPkgs.pkgs-errors).buildDepError "witherable"))
            ];
          buildable = true;
          };
        };
      };
    }