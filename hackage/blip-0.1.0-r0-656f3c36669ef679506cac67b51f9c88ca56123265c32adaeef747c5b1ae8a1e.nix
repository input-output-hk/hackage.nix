{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "blip"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bernie Pope <florbitous@gmail.com>";
      author = "Bernie Pope";
      homepage = "https://github.com/bjpop/blip";
      url = "";
      synopsis = "Python to bytecode compiler.";
      description = "Compiles Python 3 source code to bytecode. The resulting\nbytecode is written to a '.pyc' file, compatible with the\nCPython implementation (the default Python interpreter).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "blip" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bliplib" or ((hsPkgs.pkgs-errors).buildDepError "bliplib"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."parseargs" or ((hsPkgs.pkgs-errors).buildDepError "parseargs"))
            (hsPkgs."language-python" or ((hsPkgs.pkgs-errors).buildDepError "language-python"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }