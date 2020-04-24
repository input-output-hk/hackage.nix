{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ghc-events"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Donnie Jones <donnie@darthik.com>,\nSimon Marlow <marlowsd@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Library and tool for parsing .eventlog files from GHC";
      description = "Parses .eventlog files emitted by GHC 6.12.1 and later.\nIncludes the show-ghc-events tool to dump an event\nlog file as text.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = { "show-ghc-events" = { buildable = true; }; };
      };
    }