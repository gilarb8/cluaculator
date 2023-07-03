-- Fungsi penjumlahan
function add(a, b)
  return a + b
end

-- Fungsi pengurangan
function subtract(a, b)
  return a - b
end

-- Fungsi perkalian
function multiply(a, b)
  return a * b
end

-- Fungsi pembagian
function divide(a, b)
  if b ~= 0 then
    return a / b
  else
    return "Error: Division by zero!"
  end
end

-- Fungsi untuk mengambil input dari pengguna
function get_input()
  io.write("Masukkan angka pertama: ")
  local a = tonumber(io.read())
  io.write("Masukkan angka kedua: ")
  local b = tonumber(io.read())
  return a, b
end

-- Fungsi untuk memilih operasi
function choose_operation()
  io.write("Pilih operasi (1: tambah, 2: kurang, 3: kali, 4: bagi): ")
  local choice = tonumber(io.read())
  return choice
end

-- Fungsi utama
function main()
  local a, b = get_input()
  local choice = choose_operation()
  local result

  if choice == 1 then
    result = add(a, b)
  elseif choice == 2 then
    result = subtract(a, b)
  elseif choice == 3 then
    result = multiply(a, b)
  elseif choice == 4 then
    result = divide(a, b)
  else
    print("Error: Invalid choice!")
    return
  end

  print("Hasil: " .. result)
end

-- Jalankan program
main()

--[[
Program di atas meminta untuk
memasukkan dua angka dan memilih
operasi matematika yang ingin
dilakukan (penjumlahan, pengurangan,
perkalian, atau pembagian). Kemudian,
program akan menghitung hasilnya dan
menampilkannya ke layar.
]]

