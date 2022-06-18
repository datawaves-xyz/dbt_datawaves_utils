
# Datawaves Utilities for dbt

This package includes macros that are used in Datawaves's dbt packages.

## Cross-db utils


### substring

Returns a substring of the supplied string or binary value.

#### Usage

```sql
{{ datawaves_utils.substring("text", "position", "length") }}
```


### hex

Converts `expression` to hexadecimal.

#### Usage:

```sql
{{ datawaves_utils.hex("binary_field") }}
```


### binary_literal

A binary literal is used to specify a byte sequence value.

#### Usage:

```sql

{{ datawaves_utils.binary_literal('01010101') }}

```

### displayed_amount

Adjust the token amount according to the decimals.

#### Usage:

```sql
{{ datawaves_utils.displayed_amount("original_amount", "decimals") }}
```


### binary_to_numeric

Convert a binary column to numeric type.

#### Usage:

```sql
{ datawaves_utils.binary_to_numeric("binary_field")) }}
```


### binary_to_address

Convert a binary column to a hex string started with 0x.

#### Usage:

```sql
{{ datawaves_utils.binary_to_address("binary_field") }} 
```