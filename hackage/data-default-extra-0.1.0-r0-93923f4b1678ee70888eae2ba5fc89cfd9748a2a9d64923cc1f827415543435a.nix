{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      with-bytestring = true;
      with-case-insensitive = true;
      with-containers = true;
      with-dlist = false;
      with-text = true;
      with-old-locale = true;
      with-unordered-containers = true;
      with-vector = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "data-default-extra";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2017 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/data-default-extra";
      url = "";
      synopsis = "A class for types with a default value.";
      description = "An alternative to\n<https://hackage.haskell.org/package/data-default data-default> package, that\nprovides a lot of additional instances for @Default@ type class.\n\n@Default@ type class provides a default value (@def@) of a type. In case when\na particluar type has an instance for @Monoid@, then the default value should\nbe @mempty@, otherwise it can cause a great deal of confusion.\n\nOne must understand, that @Default@ type class, has no axioms associated with\nit. Its purpose is to minimize:\n\n* Number of imports.\n\n* Number of introduced definitions that are part of an API.\n\n* Complexity of building more complicated \\\"default values\\\" out of\nsimpler \\\"default values\\\".\n\n* Cognitive overhead. (Reduction of cognitive overhead is partially a\nconsequence of reducing above issues.)\n\nAs one may notice, most of the listed problems, that @Default@ type class\ntries to solve, to various degrees of success, are for human benefit, and not\ntheoretically founded. Because of this, please always try hard to define\nsensible instances of @Default@. Most importantly, document what @def@ means\nfor particular type, and always check that @def@ is sensible, by testing it\non a real world sample of human beings, one is not a big enough sample.\n\nThat said, using @Default@ may not always be a good idea. If it breaks\npeople's mental model, or theoretical models with real axioms, then just\ndon't use it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (((((((([
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.data-default-instances-new-base)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ pkgs.lib.optional (flags.with-bytestring) (hsPkgs.data-default-instances-bytestring)) ++ pkgs.lib.optional (flags.with-case-insensitive) (hsPkgs.data-default-instances-case-insensitive)) ++ pkgs.lib.optional (flags.with-containers) (hsPkgs.data-default-instances-containers)) ++ pkgs.lib.optional (flags.with-dlist) (hsPkgs.data-default-instances-dlist)) ++ pkgs.lib.optional (flags.with-text) (hsPkgs.data-default-instances-text)) ++ pkgs.lib.optional (flags.with-old-locale) (hsPkgs.data-default-instances-old-locale)) ++ pkgs.lib.optional (flags.with-unordered-containers) (hsPkgs.data-default-instances-unordered-containers)) ++ pkgs.lib.optional (flags.with-vector) (hsPkgs.data-default-instances-vector);
      };
    };
  }