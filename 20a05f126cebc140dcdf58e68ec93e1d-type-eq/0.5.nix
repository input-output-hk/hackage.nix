{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "type-eq";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012-2013 Gábor Lehel";
        maintainer = "Gábor Lehel <glaebhoerl@gmail.com>";
        author = "Gábor Lehel";
        homepage = "http://github.com/glaebhoerl/type-eq";
        url = "";
        synopsis = "Type equality evidence you can carry around";
        description = "This package provides types and functions to store and manipulate evidence of equality between types.\n\nTo take advantage of kind polymorphism when it is available but not require it, it is split into the following primary modules:\n\n- @/Type.Eq/@: Types and functions which can be kind-polymorphic if @PolyKinds@ are available, but are specific to kind @*@ otherwise.\n\n- @/Type.Eq.Higher/@: Kind-monomorphic types and functions of higher kind, up to @* -> * -> *@.\n\n- @/Type.Eq.Poly/@: Combinators that require kind polymorphism. This module is only available if @PolyKinds@ are available.\n\nMajor required extensions: @GADTs@, @TypeFamilies@ (for @~@), @Rank2Types@, @TypeOperators@\n\nOptional extensions: @PolyKinds@ (GHC 7.6+)\n\nMinimum GHC: 6.10\n\nRelated packages:\n\n- <http://hackage.haskell.org/package/type-equality>\n\n- <http://hackage.haskell.org/package/eq>\n\n- <http://hackage.haskell.org/package/ty>\n\n- <http://hackage.haskell.org/package/dependent-sum>\n\n- <http://hackage.haskell.org/package/categories> (@Data.Category.Discrete@)";
        buildType = "Simple";
      };
      components = {
        "type-eq" = {
          depends  = [ hsPkgs.base ];
          build-tools = [
            hsPkgs.buildPackages.cpphs
          ];
        };
      };
    }