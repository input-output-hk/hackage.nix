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
      specVersion = "1.10";
      identifier = {
        name = "reflex-dom-contrib";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Soostone Inc, other authors";
      maintainer = "mightybyte@gmail.com";
      author = "Doug Beardsley";
      homepage = "https://github.com/reflex-frp/reflex-dom-contrib";
      url = "";
      synopsis = "A playground for experimenting with infrastructure and common code for reflex applications";
      description = "This library is intended to be a public playground for\ndeveloping infrastructure, higher level APIs, and widget\nlibraries for reflex FRP applications. This library is\nexperimental and does not have a strong commitment to\npreserving backwards compatibility. It will not have a\nhigh bar for the quality of contributions. That being\nsaid, we prefer commits that add new things rather than\nchanging existing ones. If you are wondering if there is\nsome convenience code or abstractions and you don't find\nthem in reflex or reflex-dom, look here and see if anyone\nhas already done it. If you have general-purpose reflex\ncode that you find useful that is not already here, add\nit to this repository and send us a pull request.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.ghcjs-base)
          (hsPkgs.ghcjs-dom)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.readable)
          (hsPkgs.reflex)
          (hsPkgs.reflex-dom)
          (hsPkgs.string-conv)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
    };
  }