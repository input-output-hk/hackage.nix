{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "darcs2dot"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "soenkehahn@gmail.com";
      author = "Sönke Hahn";
      homepage = "";
      url = "";
      synopsis = "Outputs dependencies of darcs patches in dot format.";
      description = "Outputs dependencies of darcs patches in dot format. Just run darcs2dot in a darcs repo and it will output (the transitive reduction of) the dependencies of the patches in dot format to stdout.\n\nYou can use the graphviz tools to generate graph files from that. For example:\n\n@\$ darcs2dot | dot -Tpdf -o darcsDeps.pdf@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "darcs2dot" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."darcs" or ((hsPkgs.pkgs-errors).buildDepError "darcs"))
            (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."graph-wrapper" or ((hsPkgs.pkgs-errors).buildDepError "graph-wrapper"))
            ];
          buildable = true;
          };
        };
      };
    }