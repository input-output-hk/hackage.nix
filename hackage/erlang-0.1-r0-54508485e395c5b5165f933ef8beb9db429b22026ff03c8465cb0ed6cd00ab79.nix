{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "erlang"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "nubgames@gmail.com";
      author = "Eric Sessoms <nubgames@gmail.com>";
      homepage = "http://github.com/esessoms/haskell-interface";
      url = "";
      synopsis = "FFI interface to Erlang.";
      description = "Speaks the Erlang network protocol and impersonates an Erlang node\non the network.  Fully capable of bi-directional communication with\nErlang.  Erlang types are, as far as reasonable, mapped to Haskell\ntypes.  Messages to Erlang are just function calls in Haskell, and\nmessages from Erlang are delivered to MVars.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."nano-md5" or ((hsPkgs.pkgs-errors).buildDepError "nano-md5"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }