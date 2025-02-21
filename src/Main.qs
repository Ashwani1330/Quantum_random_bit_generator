import Std.Math.BitSizeI;
import Microsoft.Quantum.Convert.*;
import Microsoft.Quantum.Math.*;

operation Main(): Int {
    let max = 100;
    Message($"Sampling a random number between 0 and {max}");
    // Generate random number in the 0..max range.
    return GenerateRandomNumberInRange(max);
}

// Generates a random number between 0 and `max`.
operation GenerateRandomNumberInRange(max: Int): Int {

    mutable bits = [];
    let nBits = BitSizeI(max);
    for idxBit in 1..nBits {
        set bits += [GenerateRandomBit()];
    }
    let sample = ResultArrayAsInt(bits);

    return sample > max ? GenerateRandomNumberInRange(max) | sample;
}

operation GenerateRandomBit(): Result {

    // Allocate a qubit
    use q = Qubit();

    // Set the qubit into superposition of 0 and 1 using the Hadamard
    H(q);

    // Measure the qubit and store the result
    let result = M(q);

    // Reset qubit to the |0〉 state
    Reset(q);
    
    // Return the result of the measurement
    return result;
}