{-# LANGUAGE TemplateHaskell #-}

module Domain
    ( AA (..)
    , Spectrum (..)
    , spMz
    , spIntensity
    ) where

import Lens.Micro.TH (makeLenses)

data AA = A | R | N | D | C | Q | E | G | H | I | L | K | M | F | P | O | S | U | T | W | Y | V | B | Z | X | J
    deriving (Show, Read)


data Spectrum = Spectrum
    { _spMz :: [Double]
    , _spIntensity :: [Double]
    } deriving (Show)

makeLenses ''Spectrum

