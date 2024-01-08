namespace SolacedQuantum {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;

    operation GenerateRandomBit() : Result {
        use q = Qubit();

        H(q);

        return M(q);
    }

    operation SampleRandomNumberInRange(min : Int, max : Int) : Int {
        mutable output = min - 1;
        repeat {
            mutable bits = [];
            for idxBit in 1..BitSizeI(max) {
                set bits += [GenerateRandomBit()];
            }
            set output = ResultArrayAsInt(bits);
        } until (output >= min and output <= max);
        return output;
    }

    @EntryPoint()
    operation SampleRandomNumber() : Int {
        let min = 100;
        let max = 10000;
        Message($"Sampling a random number between {min} and {max}: ");
        return SampleRandomNumberInRange(min, max);
    }
}
