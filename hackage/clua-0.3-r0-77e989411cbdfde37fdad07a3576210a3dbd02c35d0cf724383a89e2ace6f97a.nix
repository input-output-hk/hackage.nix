{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "clua"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tom@zwizwa.be";
      author = "Tom Schouten";
      homepage = "http://zwizwa.be/-/meta";
      url = "";
      synopsis = "C to Lua data wrapper generator";
      description = "Gather enums and packed struct definitions from a C file\nand generate a Lua table that can be used in conjunction\nwith parse-bin.lua to convert between Lua tables and\nbinary data.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "clua" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."language-c" or ((hsPkgs.pkgs-errors).buildDepError "language-c"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }