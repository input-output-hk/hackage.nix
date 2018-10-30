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
      specVersion = "1.8.0.2";
      identifier = {
        name = "optparse-generic";
        version = "1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Auto-generate a command-line parser for your datatype";
      description = "This library auto-generates an @optparse-applicative@-compatible\n@Parser@ from any data type that derives the @Generic@ interface.\n\nSee the documentation in \"Options.Generic\" for an example of how to use\nthis library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.Only)
          (hsPkgs.optparse-applicative)
          (hsPkgs.time)
          (hsPkgs.void)
          (hsPkgs.bytestring)
          (hsPkgs.semigroups)
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.8") [
          (hsPkgs.singletons)
          (hsPkgs.tagged)
          (hsPkgs.th-desugar)
        ];
      };
    };
  }