{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "polyseq";
          version = "0.1.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "ds@iai.uni-bonn.de";
        author = "Daniel Seidel";
        homepage = "";
        url = "";
        synopsis = "Taming Selective Strictness";
        description = "Given a term, this program calculates a set of \\\"optimal\\\" free theorems\nthat hold in a lambda calculus with selective strictness. It omits\ntotality (in general, bottom-reflection) and other restrictions when\npossible. The underlying theory is described in the paper \\\"Taming\nSelective Strictness\\\" (ATPS'09) by Daniel Seidel and Janis Voigtländer.";
        buildType = "Simple";
      };
      components = {
        polyseq = {
          depends  = [
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.cgi
            hsPkgs.containers
            hsPkgs.free-theorems
            hsPkgs.haskell-src
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.utf8-string
            hsPkgs.xhtml
          ] ++ (if compiler.isGhc
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ]);
        };
        exes = {
          polyseq.cgi = {
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