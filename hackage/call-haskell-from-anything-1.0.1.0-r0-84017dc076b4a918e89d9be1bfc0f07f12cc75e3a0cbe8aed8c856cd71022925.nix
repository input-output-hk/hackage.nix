{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "call-haskell-from-anything";
        version = "1.0.1.0";
        };
      license = "MIT";
      copyright = "";
      maintainer = "Niklas Hambüchen (mail@nh2.me)";
      author = "Niklas Hambüchen (mail@nh2.me)";
      homepage = "https://github.com/nh2/call-haskell-from-anything";
      url = "";
      synopsis = "Call Haskell functions from other languages via serialization and dynamic libraries";
      description = "FFI via serialisation. See https://github.com/nh2/call-haskell-from-anything for details.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."msgpack" or ((hsPkgs.pkgs-errors).buildDepError "msgpack"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "call-haskell-from-anything.so" = {
          depends = [
            (hsPkgs."call-haskell-from-anything" or ((hsPkgs.pkgs-errors).buildDepError "call-haskell-from-anything"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."msgpack" or ((hsPkgs.pkgs-errors).buildDepError "msgpack"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }