{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "polyseq";
          version = "0.1.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "ds@iai.uni-bonn.de";
        author = "Daniel Seidel";
        homepage = "";
        url = "";
        synopsis = "Counter examples to Free Theorems";
        description = "Given a term, this program calculates a set of optimal Free Theorems\nthat hold in a lambda calculus with Seq. It drops bottom-reflectingness\n(or totality) restrictions when possible.\nThe theory behind the algorithm is described in the paper\n\\\"Taming Selective Strictness\\\" (ATPS'09) by Daniel Seidel and Janis\nVoigtländer.";
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
          ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
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