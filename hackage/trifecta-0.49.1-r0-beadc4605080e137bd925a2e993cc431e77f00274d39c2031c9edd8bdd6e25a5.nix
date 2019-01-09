{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "trifecta"; version = "0.49.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010-2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/trifecta/";
      url = "";
      synopsis = "A modern parser combinator library with convenient diagnostics";
      description = "A modern unicode-aware parser combinator library with slicing and Clang-style colored diagnostics";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-html)
          (hsPkgs.bifunctors)
          (hsPkgs.data-lens)
          (hsPkgs.data-lens-fd)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.fingertree)
          (hsPkgs.reducers)
          (hsPkgs.profunctors)
          (hsPkgs.utf8-string)
          (hsPkgs.semigroupoids)
          (hsPkgs.parallel)
          (hsPkgs.pointed)
          (hsPkgs.transformers)
          (hsPkgs.kan-extensions)
          (hsPkgs.comonad)
          (hsPkgs.terminfo)
          (hsPkgs.keys)
          (hsPkgs.wl-pprint-extras)
          (hsPkgs.wl-pprint-terminfo)
          ];
        };
      };
    }