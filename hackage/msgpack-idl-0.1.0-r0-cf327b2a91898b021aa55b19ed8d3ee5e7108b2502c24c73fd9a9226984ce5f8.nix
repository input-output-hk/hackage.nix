{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "msgpack-idl"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://msgpack.org/";
      url = "";
      synopsis = "An IDL Compiler for MessagePack";
      description = "An IDL Compiler for MessagePack <http://msgpack.org/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."shakespeare-text" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare-text"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."msgpack" or ((hsPkgs.pkgs-errors).buildDepError "msgpack"))
          (hsPkgs."peggy" or ((hsPkgs.pkgs-errors).buildDepError "peggy"))
          ];
        buildable = true;
        };
      exes = {
        "mpidl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."peggy" or ((hsPkgs.pkgs-errors).buildDepError "peggy"))
            (hsPkgs."msgpack-idl" or ((hsPkgs.pkgs-errors).buildDepError "msgpack-idl"))
            ];
          buildable = true;
          };
        };
      };
    }