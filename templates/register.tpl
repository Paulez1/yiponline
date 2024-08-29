{block name=title}Yiponline Registration{/block}


{block name=body}

    <div class="container-fluid bg-white">
        <div class="row align-items-center">
            <div class="d-lg-flex align-items-center w-lg-25 
          min-vh-lg-0 min-vw-lg-0 position-fixed bg-cover bg-back px-0 top-0">
                <div class="">
                    <img src="/yiponline/assets/images/1s.png" alt="Image" height="100%" width="100%" />
                    <img src="/yiponline/assets/images/3.png" alt="Image" height="100%" width="100%" />
                </div>
            </div>

            <div class="w-lg-100 px-20">
                <div class="px-lg-20 ms-lg-20">
                    <div class="text-start mt-6">
                        <div class="text-dark fs-3 fw-bold">
                            <span class="text-warning">Y</span><span class="text-danger">i</span><span
                                class="text-dark-success">P</span>online<span class="text-danger">.</span>
                        </div>
                    </div>
                    <div class="px-lg-0 ms-lg-20">
                        <div class="text-dark mt-5 mb-2">
                            <h1 class="display-5">
                                Let's get you started {$email}
                        </h1>

                        <div id="responseerr" class="bg-light-danger p-3 text-dark fs-4">

                        </div>

                        <div id="response" class="bg-light-success p-3 text-dark fs-4">

                        </div>

                        <form id="RegForm" action="register.php" method="post" class="pt-3">

                            <div class="mb-4">
                                <p class="text-dark fs-4 mb-1">Enter Your Email</p>
                                <input type="email" autoComplete={false} id="email" name="email"
                                    class="form-control form-control-lg border border-dark border-3 rounded-0"
                                    placeholder="Email Address" required />
                            </div>

                            <div class="mb-4">
                                <p class="text-dark fs-4 mb-1">Enter Your Username</p>
                                <input type="text" autoComplete={false} id="username" name="username"
                                    class="form-control form-control-lg border border-dark border-3 rounded-0"
                                    placeholder="Username" required />
                            </div>

                            <div class="mb-4">
                                <p class="text-dark fs-4 mb-1">Enter Your Password</p>
                                <input type="password" autoComplete={false} id="password" name="password" id="password"
                                    title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                                    class="form-control form-control-lg border border-dark border-3 rounded-0"
                                    placeholder="Password" required />
                            </div>

                            <div id="passalert" class="mt-n4 mb-4">
                                <div class="bg-result py-2 px-4 border border-none shadow-none rounded-3">
                                    <div class="fs-4 fw-medium text-white">Use Password Syntax</div>
                                    <div class="mt-2">
                                        <div class="mb-1 text-white"><i class="bi bi-dot"></i> A <b>lowercase</b> letter
                                        </div>
                                        <div class="mb-1 text-white"><i class="bi bi-dot"></i> A <b>capital
                                                (uppercase)</b> letter</div>
                                        <div class="mb-1 text-white"><i class="bi bi-dot"></i> A <b>number</b></div>
                                        <div class="mb-1 text-white"><i class="bi bi-dot"></i> Minimum <b>8
                                                characters</b></div>
                                    </div>
                                </div>
                            </div>

                            <div class="">
                                <div class="text-end">
                                    <button class="btn btn-md fs-3 btn-success rounded-circle shadow-none"
                                        type="submit">
                                        <i class="bi bi-arrow-right"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>


                <div class="text-start text-purple2 fs-4 mt-4">
                    © 2022 Powered and developed with ❤️ By Omolade Paul Olasunkanmi
                </div>

            </div>


        </div>
    </div>
</div>


<script>
    const responseElementerr = document.getElementById('responseerr');
    const responseElement = document.getElementById('response');

    responseElementerr.style.display = "none";

    responseElement.style.display = "none";

    document.addEventListener('DOMContentLoaded', () => {
        const form = document.getElementById('RegForm');

        if (!form) {
            console.error('Form with ID "RegForm" not found.');
            return;
        }

        form.addEventListener('submit', function(event) {
            event.preventDefault();

            const formData = new FormData(form);

            fetch(form.action, {
                    method: 'POST',
                    body: formData
                })
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok');
                    }
                    return response.json(); // or response.json() if expecting JSON
                })
                .then(data => {

                    if (responseElement) {
                        if (data.status == 'error') {
                            responseElementerr.style.display = "block";
                            responseElementerr.innerHTML = data.message;
                        } else {
                            responseElementerr.style.display = "none";
                            responseElement.style.display = "block";
                            responseElement.innerHTML = data.message;
                        }

                    } else {
                        console.error('Element with ID "response" not found.');
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    });
            });
        });
    </script>

{/block}