{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "free-theorems-counterexamples";
          version = "0.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "ds@iai.uni-bonn.de";
        author = "Daniel Seidel, Joachim Breitner";
        homepage = "";
        url = "";
        synopsis = "Automatically Generating Counterexamples to Naive Free Theorems";
        description = "This program is to verify (or to put into question) strictness conditions\non free theorems that arise if a polymorphic lambda calculus is\tenriched by\ngeneral recursion.\nGiven a type the program either returns an instance of the corresponding\nunrestricted free theorem that does not hold and thereby verifies the need\nof the additional restrictions or it returns without finding such an\ninstantiation and thereby suggests (but not proves) that the strictness\nconditions are superfluous.\nThe underlying algorithm is described in \\\"Automatically Generating\nCounterexamples to Naive Free Theorems\\\" (FLOPS'10) by Daniel Seidel and Janis\nVoigtländer.\nA webinterface for the program is also available at\n<http://www-ps.iai.uni-bonn.de/cgi-bin/exfind.cgi>.\n\nRelated to this package you may be interested in the online free theorem generator\nat <http://www-ps.iai.uni-bonn.de/ft> that is also available offline via\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/free-theorems-webui>.\nAlso interesting may be the tool polyseq that generates \\\"optimal\\\" free theorems in a\npolymorphic lambda calculus with selective strictness.\nPolyseq can be downloaded at\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/polyseq>\nbut the functionality is as well provided via a webinterface at\n<http://www-ps.iai.uni-bonn.de/cgi-bin/polyseq.cgi>.";
        buildType = "Simple";
      };
      components = {
        "free-theorems-counterexamples" = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.haskell-src
            hsPkgs.haskell-src-exts
            hsPkgs.pretty
            hsPkgs.containers
            hsPkgs.HUnit
          ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ]);
        };
        exes = {
          "counterexamples.cgi" = {
            depends  = [
              hsPkgs.xhtml
              hsPkgs.cgi
              hsPkgs.utf8-string
              hsPkgs.free-theorems
            ];
          };
        };
      };
    }