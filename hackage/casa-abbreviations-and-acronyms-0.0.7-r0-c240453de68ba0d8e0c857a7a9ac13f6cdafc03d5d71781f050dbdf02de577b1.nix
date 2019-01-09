{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "casa-abbreviations-and-acronyms";
        version = "0.0.7";
        };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/casa-abbreviations-and-acronyms";
      url = "";
      synopsis = "CASA Abbreviations and Acronyms";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nCASA Abbreviations and Acronyms\n\nhttps://www.casa.gov.au/about-us/standard-page/aviation-abbreviations-and-acronyms";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.containers)
          (hsPkgs.fuzzy)
          (hsPkgs.monoid-subclasses)
          (hsPkgs.wreq)
          (hsPkgs.bytestring)
          (hsPkgs.these)
          ];
        };
      exes = {
        "pre-process-casa-abbreviations-and-acronyms" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wreq)
            (hsPkgs.lens)
            (hsPkgs.containers)
            (hsPkgs.fuzzy)
            (hsPkgs.monoid-subclasses)
            (hsPkgs.wreq)
            (hsPkgs.bytestring)
            ];
          };
        "casa-abbreviations-and-acronyms" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.fuzzy)
            (hsPkgs.optparse-applicative)
            (hsPkgs.casa-abbreviations-and-acronyms)
            ];
          };
        };
      };
    }