{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hp2pretty"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010,2011,2015,2017  Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/hp2pretty";
      url = "";
      synopsis = "generate pretty graphs from heap profiles";
      description = "hp2pretty is a rewrite of hp2ps, implemented in Haskell, with\nthe aims of being maintainable, with more flexible output, and\nmore beautiful output.  Currently hp2pretty outputs Scalable\nVector Graphics (SVG) only, though PostScript (PS) is planned.\nAlso none (count'em) of hp2ps' options are implemented yet in\nhp2pretty.\n\nIn hp2pretty-0.6 ByteString is replaced by Text, fixing bugs\nwith Unicode.\n\nIn hp2pretty-0.5 using attoparsec and floatshow internally\nshould give a healthy speedup.\n\nIn hp2pretty-0.4 usage changed since the previous release:\n\nhp2pretty *.hp\n\nhp2pretty --uniform-scale=time   *.hp\n\nhp2pretty --uniform-scale=memory *.hp\n\nhp2pretty --uniform-scale=both   *.hp\n\nColours also changed: now they are based on a hash of the\ncost label, which should make colours have stable semantics\nacross program runs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hp2pretty" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."floatshow" or ((hsPkgs.pkgs-errors).buildDepError "floatshow"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }