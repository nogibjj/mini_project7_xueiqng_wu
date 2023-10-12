from setuptools import setup, find_packages

# make sure the etl script outputs properly
print(
    "\u5927\u5bb6\u597d\uff0c\u8c22\u8c22\u4f60"
    + "\u4eec\u4f7f\u7528\u6211\u7684\u4ee3\u7801\u3002\u4e0b"
    + "\u6b21\u8bf7\u95ee\u6211\u3002\n\n"
)

setup(
    # create package
    name="ETLpipelineXueqingWu",
    version="0.1.0",
    description="ETLpipline",
    author="Xueqing Wu",
    author_email="xueqingw@bu.edu",
    packages=find_packages(),
    # install package
    install_requires=[
        "databricks-sql-connector",
        "pandas",
        "python-dotenv",
    ],
    # Create entry point
    entry_points={
        "console_scripts": [
            "etl_query=main:main",
        ],
    },
)
