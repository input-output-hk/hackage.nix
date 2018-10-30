{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "pisigma";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thorsten Altenkirch <txa@cs.nott.ac.uk>,\nAndres Loeh <kspisigma@andres-loeh.de>";
      author = "Thorsten Altenkirch <txa@cs.nott.ac.uk>,\nAndres Loeh <kspisigma@andres-loeh.de>,\nNils Anders Danielsson <nad@cs.nott.ac.uk>,\nNicolas Oury <Nicolas.Oury@ed.ac.uk>,\nDarin Morrison <dwm@cs.nott.ac.uk>";
      homepage = "";
      url = "";
      synopsis = "A dependently typed core language";
      description = "PiSigma is a small dependently typed language with only very few\nconstructs: Type:Type, Pi-types, Sigma-types, enumerations and a\ngeneral meachanism for mutual recursion for types and values\ncontrolled by lifted types. It is intended as a core language for\ndependently typed languages like Agda. It has been described in the\npaper <em>PiSigma: Dependent Types Without the Sugar</em> which has\nappeared in the proceedings of FLOPS 2010.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.haskeline)
          (hsPkgs.haskeline-class)
          (hsPkgs.mpppc)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          (hsPkgs.containers)
        ];
      };
      exes = { "pisigma" = {}; };
    };
  }