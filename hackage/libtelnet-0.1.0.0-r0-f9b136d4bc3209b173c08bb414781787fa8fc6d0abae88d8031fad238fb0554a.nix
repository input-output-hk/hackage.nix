{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "libtelnet"; version = "0.1.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "(c) 2017-2019 Jack Kelly";
      maintainer = "jack@jackkelly.name";
      author = "Jack Kelly";
      homepage = "https://git.sr.ht/~jack/libtelnet-haskell";
      url = "";
      synopsis = "Bindings to libtelnet";
      description = "Binds https://github.com/seanmiddleditch/libtelnet , a C\nlibrary for writing telnet clients and\nservers. See @README.md@ or\n\"Network.Telnet.LibTelnet\" to get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libtelnet" or ((hsPkgs.pkgs-errors).pkgConfDepError "libtelnet"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."libtelnet" or ((hsPkgs.pkgs-errors).buildDepError "libtelnet"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."network-simple" or ((hsPkgs.pkgs-errors).buildDepError "network-simple"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }