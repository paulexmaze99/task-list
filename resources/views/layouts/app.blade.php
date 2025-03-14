<!DOCTYPE html>
<html>

<head>
  <title>Task List App</title>
  <script src="//unpkg.com/alpinejs" defer></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

 {{-- blade-formatter-disable --}}
<style>
  /* Button styles */
  .btn {
    padding: 10px 20px;
    font-size: 14px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .btn:hover {
    background-color: #45a049;
  }

  .btn:focus {
    outline: none;
  }

  /* Link styles */
  .link {
    font-weight: bold;
    color: #007BFF;
    text-decoration: none;
  }

  .link:hover {
    text-decoration: underline;
  }

  /* Label styles */
  label {
    font-size: 14px;
    font-weight: bold;
    color: #333;
    display: block;
    margin-bottom: 5px;
  }

  /* Input and Textarea styles */
  input,
  textarea {
    border: 1px solid #ccc;
    padding: 10px;
    border-radius: 5px;
    width: 100%;
    font-size: 14px;
    margin-bottom: 15px;
  }

  input:focus,
  textarea:focus {
    border-color: #4CAF50;
    outline: none;
  }

  /* Error message styles */
  .error {
    color: red;
    font-size: 12px;
    margin-top: -10px;
    margin-bottom: 15px;
  }

  /* Success message styles */
  .alert {
    background-color: #d4edda;
    color: #155724;
    padding: 10px;
    border-radius: 5px;
    margin-bottom: 15px;
  }

  .alert .close-button {
    position: absolute;
    top: 10px;
    right: 10px;
    cursor: pointer;
  }

  .alert .close-button svg {
    width: 20px;
    height: 20px;
  }
</style>
{{-- blade-formatter-enable --}}


  @yield('styles')
</head>

<body>
  <h1>@yield('title')</h1>
  <div x-data="{ flash: true }">
    @if (session()->has('success'))
      <div x-show="flash"
        class="alert">
        <strong class="font-bold">Success!</strong>
        <div>{{ session('success') }}</div>

        <span class="close-button" @click="flash = false">
          <!-- You can customize the close icon here -->
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
            stroke-width="1.5" stroke="currentColor" class="h-6 w-6 cursor-pointer">
            <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
          </svg>
        </span>
      </div>
    @endif

    @yield('content')
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </div>
</body>

</html>
