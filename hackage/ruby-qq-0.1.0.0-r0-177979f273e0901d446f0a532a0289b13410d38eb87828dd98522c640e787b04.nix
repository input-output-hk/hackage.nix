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
        name = "ruby-qq";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@joelt.io";
      author = "Joel Taylor";
      homepage = "https://github.com/joelteon/ruby-qq";
      url = "";
      synopsis = "rubyish quasiquoters";
      description = "Quasiquoters for @%w&#123;&#125;@, @%x&#123;&#125;@, @%r&#123;&#125;@, and @%q&#123;&#125;@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.pcre-light)
          (hsPkgs.process)
          (hsPkgs.template-haskell)
          (hsPkgs.trifecta)
        ];
      };
    };
  }