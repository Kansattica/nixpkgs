{ cabal, Cabal, filepath, haskellSrcExts, optparseApplicative
, split
}:

cabal.mkDerivation (self: {
  pname = "packunused";
  version = "0.1.1.2";
  sha256 = "1kp004lh6sa4gjqm37ldgk70jbncrnr76rk9c77464cnj6ajxmlm";
  isLibrary = false;
  isExecutable = true;
  buildDepends = [
    Cabal filepath haskellSrcExts optparseApplicative split
  ];
  jailbreak = true;
  meta = {
    homepage = "https://github.com/hvr/packunused";
    description = "Tool for detecting redundant Cabal package dependencies";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
