{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hastache"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "Sergey S Lymar (c) 2011";
      maintainer = "Sergey S Lymar <sergey.lymar@gmail.com>";
      author = "Sergey S Lymar <sergey.lymar@gmail.com>";
      homepage = "http://github.com/lymar/hastache";
      url = "";
      synopsis = "Haskell implementation of Mustache templates";
      description = "Haskell implementation of Mustache templates (<http://mustache.github.com/>).\n\nSee homepage for examples of usage: <http://github.com/lymar/hastache>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          ];
        buildable = true;
        };
      };
    }