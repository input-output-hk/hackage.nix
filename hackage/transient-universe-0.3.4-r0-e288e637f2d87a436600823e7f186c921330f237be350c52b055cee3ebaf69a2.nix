{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "transient-universe"; version = "0.3.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "http://www.fpcomplete.com/user/agocorona";
      url = "";
      synopsis = "Remote execution and map-reduce: distributed computing for Transient";
      description = "See <http://github.com/agocorona/transient>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transient" or ((hsPkgs.pkgs-errors).buildDepError "transient"))
          ] ++ (if compiler.isGhcjs && (compiler.version).ge "0.1"
          then [
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."ghcjs-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-prim"))
            ]
          else [
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."TCache" or ((hsPkgs.pkgs-errors).buildDepError "TCache"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."network-info" or ((hsPkgs.pkgs-errors).buildDepError "network-info"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
            (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
            ]);
        buildable = true;
        };
      exes = {
        "monitorService" = {
          depends = if !(compiler.isGhcjs && (compiler.version).ge "0.1")
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."transient" or ((hsPkgs.pkgs-errors).buildDepError "transient"))
              (hsPkgs."transient-universe" or ((hsPkgs.pkgs-errors).buildDepError "transient-universe"))
              (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ];
          buildable = true;
          };
        };
      };
    }