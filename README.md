# Quantum Random Bit Generator

This repository contains a simple quantum program that generates random bits using a quantum computer. The program is written in Q# and demonstrates the use of quantum operations to achieve randomness.

## Files

- GenerateRandomBit.qs: Contains the `GenerateRandomBit` operation which generates a single random bit using a qubit.
- Main.qs: Contains the `Main` operation which generates a random number in a specified range using the `GenerateRandomBit` operation.

## Usage

### Prerequisites

- Install the [Quantum Development Kit](https://docs.microsoft.com/en-us/azure/quantum/install-overview-qdk).

### Running the Program

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/Quantum_random_bit_generator.git
    cd Quantum_random_bit_generator
    ```

2. Open the project in Visual Studio Code:
    ```sh
    code .
    ```

3. Run the program:
    ```sh
    dotnet run
    ```

### Operations

#### `GenerateRandomBit`

This operation generates a single random bit using a qubit.

```qsharp
operation GenerateRandomBit(): Result {
    use q = Qubit();
    H(q);
    let result = M(q);
    Reset(q);
    return result;
}
```

#### `Main`

This operation generates a random number in the range `0` to `max` using the `GenerateRandomBit` operation.

```qsharp
operation Main(): Int {
    let max = 100;
    Message($"Sampling a random number between 0 and {max}");
    return GenerateRandomNumberInRange(max);
}
```

### Run Screenshot
![image](https://github.com/user-attachments/assets/3138f83c-89f8-498c-b911-c5568c6e4210)

## License

This project is licensed under the MIT License. See the LICENSE file for details.

---

