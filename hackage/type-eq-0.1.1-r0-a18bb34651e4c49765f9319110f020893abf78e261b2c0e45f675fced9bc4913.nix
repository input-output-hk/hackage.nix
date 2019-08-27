let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "type-eq"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Gábor Lehel";
      maintainer = "Gábor Lehel <illissius@gmail.com>";
      author = "Gábor Lehel";
      homepage = "http://github.com/glehel/type-eq";
      url = "";
      synopsis = "Type equality evidence you can carry around";
      description = "This package provides types and combinators to store and manipulate evidence of equality between types.\n\nTo take advantage of kind-polymorphism when it is available but not require it, it is split into the following primary modules:\n\n- @/Type.Eq/@: Types and combinators which can be kind-polymorphic if @PolyKinds@ are available, but are specific to kind @*@ otherwise.\n\n- @/Type.Eq.Higher/@: Kind-monomorphic types and combinators of higher kind, up to @* -> * -> *@.\n\n- @/Type.Eq.Poly/@: Combinators that require kind-polymorphism. This module is only available if @PolyKinds@ are available.\n\nSupport for kind-polymorphism first appeared with GHC 7.4, but because it is too buggy to be practical, it will only be enabled with GHC 7.6.\n\nMajor required extensions: @GADTs@, @TypeFamilies@ (for @~@), @Rank2Types@, @TypeOperators@\n\nOptional extensions: @PolyKinds@ (GHC 7.6+)\n\nMinimum GHC: 6.10\n\nRelated packages:\n\n- <http://hackage.haskell.org/package/type-equality>\n\n- <http://hackage.haskell.org/package/eq>\n\n- <http://hackage.haskell.org/package/ty>\n\n- <http://hackage.haskell.org/package/dependent-sum>\n\n- <http://hackage.haskell.org/package/categories> (@Data.Category.Discrete@)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.0") [
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."groupoids" or (buildDepError "groupoids"))
          ];
        };
      };
    }