{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reflex-jsx"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 David Ackerman";
      maintainer = "david.w.ackerman@gmail.com";
      author = "David Ackerman";
      homepage = "https://github.com/dackerman/reflex-jsx";
      url = "";
      synopsis = "Use jsx-like syntax in Reflex";
      description = "`reflex-jsx` is a library for writing jsx-like syntax in\nreflex code. This can be useful for situations where you\nhave a large block of HTML with some styles, and it would\nbe easier to read as actual HTML than various reflex\nfunctions.\nIt's implemented as a \"QuasiQuoter\", so you just import the\n`jsx` function from ReflexJsx and generate the equivalent\nfunctions that would run inside of a \"MonadWidget t m\".\nNot only can you generate a block of static HTML/CSS, but you\ncan also splice in your own nodes that implement\n\"MonadWidget t m\", string attribute values, or even entire\ndynamic attribute maps.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.reflex)
          (hsPkgs.reflex-dom)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.containers)
          (hsPkgs.text)
          ];
        };
      };
    }