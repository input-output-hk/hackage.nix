{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "free-theorems-seq-webui";
        version = "1.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ds@iai.uni-bonn.de";
      author = "Daniel Seidel";
      homepage = "";
      url = "";
      synopsis = "Taming Selective Strictness";
      description = "This package provides access to the functionality of\n<http://hackage.haskell.org/package/free-theorems-seq> through a web interface.\n\nAn online version of the interface is running at <http://www-ps.iai.uni-bonn.de/cgi-bin/polyseq.cgi>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "free-theorems-seq-webui.cgi" = {
          depends  = [
            (hsPkgs.cgi)
            (hsPkgs.containers)
            (hsPkgs.free-theorems-seq)
            (hsPkgs.mtl)
            (hsPkgs.network)
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
    };
  }