{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
      documentation = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Referees";
          version = "0.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) Pablo Couto 2014";
        maintainer = "Pablo Couto <pablo@infty.in>";
        author = "Pablo Couto <pablo@infty.in>";
        homepage = "https://github.com/pablocouto/Referees";
        url = "";
        synopsis = "A utility for computing distributions of material to review among reviewers.";
        description = "A utility for computing distributions of material to review among reviewers.\n@Referees@ takes into consideration the areas of expertise of the referees,\nthe number of items that they accept for review, the languages they\nunderstand, and the minimum and maximum number of copies we may want to\ndistribute per each item to review.";
        buildType = "Simple";
      };
      components = {
        "Referees" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.matrix
            hsPkgs.vector
            hsPkgs.cassava
            hsPkgs.MissingH
            hsPkgs.glpk-hs
          ] ++ pkgs.lib.optional _flags.documentation hsPkgs.hscolour;
        };
        exes = {
          "referees" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cond
              hsPkgs.containers
              hsPkgs.cmdargs
              hsPkgs.directory
              hsPkgs.Referees
            ] ++ pkgs.lib.optional _flags.documentation hsPkgs.hscolour;
          };
        };
      };
    }