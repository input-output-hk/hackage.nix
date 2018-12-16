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
        name = "regional-pointers";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "Regional memory pointers";
      description = "The library allows you to allocate memory in a region yielding a\nregional pointer to it. When the region terminates all pointers\nare automatically freed. Most importantly, a pointer can't be\nreturned from the region. So it's impossible to reference\nunallocated memory.\n\nThe primary technique used in this package is called \\\"Lightweight\nmonadic regions\\\" which was invented by Oleg Kiselyov and\nChung-chieh Shan. See:\n\n<http://okmij.org/ftp/Haskell/regions.html#light-weight>\n\nThis technique is implemented in the @regions@ package which is\nre-exported from this library.\n\nThis library provides wrappers around all the @Ptr@ functions\nfrom the @Foreign.*@ modules from @base@.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.regions)
          (hsPkgs.transformers)
          (hsPkgs.MonadCatchIO-transformers)
        ];
      };
    };
  }