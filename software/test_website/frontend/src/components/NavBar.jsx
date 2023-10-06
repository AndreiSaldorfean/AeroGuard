

function NavBar() {
    return (
        <nav
            className="relative flex w-full flex-wrap items-center justify-between py-2 shadow-lg lg:py-4">
            <div className="flex w-full flex-wrap items-center px-3 justify-center">
                <div>
                    <a
                        className="mx-2 my-1 flex items-center text-neutral-900 hover:text-neutral-900 focus:text-neutral-900 lg:mb-0 lg:mt-0"
                        href="#">
                        <img
                            src="logo-no-background.svg"
                            alt="Logo"
                            className="h-14 w-13"
                            loading="lazy" />
                    </a>

                </div>
                <div className="flex items-center">
                    <h2 className="text-2xl font-bold text-white">Air Quality | Sibiu</h2>
                </div>
            </div>
        </nav>
    );
}

export default NavBar;