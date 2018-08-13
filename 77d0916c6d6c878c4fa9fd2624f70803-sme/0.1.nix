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
        name = "sme";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Mauro Jaskelioff, Alejandro Russo";
      maintainer = "Mauro Jaskelioff < mauro @ fceia dot unr dot edu dot ar>, Alejandro Russo < russo at chalmers dot se >";
      author = "Mauro Jaskelioff, Alejandro Russo";
      homepage = "";
      url = "";
      synopsis = "A library for Secure Multi-Execution in Haskell";
      description = "The library is based on the paper\n/Secure Multi-Execution in Haskell/ by Mauro Jaskelioff, and Alejandro Russo. In Proceedings of\nAndrei Ershov International Conference on Perspectives of System Informatics (PSI'11), Akademgorodok,\nNovosibirsk, Russia, June 27-July 1, 2011. LNCS, Springer-Verlag.\n<http://www.cse.chalmers.se/~russo/publications_files/sme.pdf>";
      buildType = "Simple";
    };
    components = {
      "sme" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }