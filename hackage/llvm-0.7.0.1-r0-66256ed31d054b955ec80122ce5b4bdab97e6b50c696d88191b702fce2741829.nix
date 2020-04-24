{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "llvm"; version = "0.7.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>, Lennart Augustsson <lennart@augustsson.net>";
      author = "Bryan O'Sullivan, Lennart Augustsson";
      homepage = "http://darcs.serpentine.com/llvm/";
      url = "";
      synopsis = "Bindings to the LLVM compiler toolkit.";
      description = "Bindings to the LLVM compiler toolkit.\nNew in 0.7.0.0: Adapted to LLVM 2.6;\nNew in 0.6.8.0: Add functions to allow freeing function resources;\nNew in 0.6.7.0: Struct types;\nNew in 0.6.6.0: Bug fixes;\nNew in 0.6.5.0: Adapted to LLVM 2.5;";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."type-level" or ((hsPkgs.pkgs-errors).buildDepError "type-level"))
          ];
        buildable = true;
        };
      };
    }