{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "libsystemd-journal"; version = "1.3.4"; };
      license = "BSD-3-Clause";
      copyright = "Oliver Charles (c) 2014";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "http://github.com/ocharles/libsystemd-journal";
      url = "";
      synopsis = "Haskell bindings to libsystemd-journal";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.pipes)
          (hsPkgs.pipes-safe)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix-bytestring)
          (hsPkgs.vector)
          (hsPkgs.uuid)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.hsyslog)
          (hsPkgs.uniplate)
          ];
        pkgconfig = [ (pkgconfPkgs."libsystemd") ];
        };
      };
    }