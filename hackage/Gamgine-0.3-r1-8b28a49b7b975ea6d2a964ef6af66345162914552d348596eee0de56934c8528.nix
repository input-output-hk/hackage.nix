{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Gamgine"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.trstenjak@gmail.com";
      author = "Daniel Trstenjak";
      homepage = "";
      url = "";
      synopsis = "Some kind of game library or set of utilities.";
      description = "Some kind of game library or set of utilities, which are mostly/certainly only usable for my own toy projects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
          (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."Vec" or ((hsPkgs.pkgs-errors).buildDepError "Vec"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."StateVar" or ((hsPkgs.pkgs-errors).buildDepError "StateVar"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."data-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-lens"))
          (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
          (hsPkgs."cpphs" or ((hsPkgs.pkgs-errors).buildDepError "cpphs"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          (hsPkgs."ListZipper" or ((hsPkgs.pkgs-errors).buildDepError "ListZipper"))
          (hsPkgs."composition" or ((hsPkgs.pkgs-errors).buildDepError "composition"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or ((hsPkgs.pkgs-errors).buildToolDepError "cpphs")))
          ];
        buildable = true;
        };
      };
    }