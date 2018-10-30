{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "free-theorems-seq";
        version = "1.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ds@iai.uni-bonn.de";
      author = "Daniel Seidel";
      homepage = "";
      url = "";
      synopsis = "Taming Selective Strictness";
      description = "Given a term, this program calculates a set of \\\"optimal\\\" free theorems\nthat hold in a lambda calculus with selective strictness. It omits\ntotality (in general, bottom-reflection) and other restrictions when\npossible. The underlying theory is described in the paper \\\"Taming\nSelective Strictness\\\" (ATPS'09) by Daniel Seidel and Janis Voigtländer.\nA webinterface for the program is running online at\n<http://www-ps.iai.uni-bonn.de/cgi-bin/polyseq.cgi>\nor available offline via the package\n<http://hackage.haskell.org/package/free-theorems-seq-webui>.\n\nRelated to this package you may be interested in the online free theorem generator\nat <http://www-ps.iai.uni-bonn.de/ft> that is also available offline via\n<http://hackage.haskell.org/package/free-theorems-webui>.\nAdditionally interesting may be the counterexample generator for free theorems that\nexemplifies the need of strictness conditions imposed by general recursion.\nIt can be downloaded at\n<http://hackage.haskell.org/package/free-theorems-counterexamples>\nor used via a webinterface at\n<http://www-ps.iai.uni-bonn.de/cgi-bin/exfind.cgi>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.free-theorems)
          (hsPkgs.haskell-src)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.utf8-string)
          (hsPkgs.xhtml)
        ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }